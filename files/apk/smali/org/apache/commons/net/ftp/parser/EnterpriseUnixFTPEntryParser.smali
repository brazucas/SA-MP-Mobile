.class public Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.source "EnterpriseUnixFTPEntryParser.java"


# static fields
.field private static final MONTHS:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

.field private static final REGEX:Ljava/lang/String; = "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 18
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v4, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v4}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 88
    .local v4, "file":Lorg/apache/commons/net/ftp/FTPFile;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 92
    const/16 v16, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, "usr":Ljava/lang/String;
    const/16 v16, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "grp":Ljava/lang/String;
    const/16 v16, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "filesize":Ljava/lang/String;
    const/16 v16, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "mo":Ljava/lang/String;
    const/16 v16, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "da":Ljava/lang/String;
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 98
    .local v15, "yr":Ljava/lang/String;
    const/16 v16, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "hr":Ljava/lang/String;
    const/16 v16, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "min":Ljava/lang/String;
    const/16 v16, 0x17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 102
    .local v11, "name":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 103
    invoke-virtual {v4, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 115
    .local v2, "cal":Ljava/util/Calendar;
    const/16 v16, 0xe

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/16 v16, 0xd

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 118
    const/16 v16, 0xc

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 120
    const/16 v16, 0xb

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 125
    :try_start_1
    const-string v16, "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 126
    .local v12, "pos":I
    div-int/lit8 v10, v12, 0x4

    .line 127
    .local v10, "month":I
    if-eqz v15, :cond_0

    .line 130
    const/16 v16, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 151
    :goto_1
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 153
    const/16 v16, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 155
    invoke-virtual {v4, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .end local v10    # "month":I
    .end local v12    # "pos":I
    :goto_2
    invoke-virtual {v4, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 165
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v3    # "da":Ljava/lang/String;
    .end local v4    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    .end local v5    # "filesize":Ljava/lang/String;
    .end local v6    # "grp":Ljava/lang/String;
    .end local v7    # "hr":Ljava/lang/String;
    .end local v8    # "min":Ljava/lang/String;
    .end local v9    # "mo":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "usr":Ljava/lang/String;
    .end local v15    # "yr":Ljava/lang/String;
    :goto_3
    return-object v4

    .line 136
    .restart local v2    # "cal":Ljava/util/Calendar;
    .restart local v3    # "da":Ljava/lang/String;
    .restart local v4    # "file":Lorg/apache/commons/net/ftp/FTPFile;
    .restart local v5    # "filesize":Ljava/lang/String;
    .restart local v6    # "grp":Ljava/lang/String;
    .restart local v7    # "hr":Ljava/lang/String;
    .restart local v8    # "min":Ljava/lang/String;
    .restart local v9    # "mo":Ljava/lang/String;
    .restart local v10    # "month":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "pos":I
    .restart local v13    # "usr":Ljava/lang/String;
    .restart local v15    # "yr":Ljava/lang/String;
    :cond_0
    const/16 v16, 0x1

    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 140
    .local v14, "year":I
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    if-ge v0, v10, :cond_1

    .line 142
    add-int/lit8 v14, v14, -0x1

    .line 144
    :cond_1
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 146
    const/16 v16, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 148
    const/16 v16, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 157
    .end local v10    # "month":I
    .end local v12    # "pos":I
    .end local v14    # "year":I
    :catch_0
    move-exception v16

    goto :goto_2

    .line 165
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v3    # "da":Ljava/lang/String;
    .end local v5    # "filesize":Ljava/lang/String;
    .end local v6    # "grp":Ljava/lang/String;
    .end local v7    # "hr":Ljava/lang/String;
    .end local v8    # "min":Ljava/lang/String;
    .end local v9    # "mo":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "usr":Ljava/lang/String;
    .end local v15    # "yr":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 109
    .restart local v3    # "da":Ljava/lang/String;
    .restart local v5    # "filesize":Ljava/lang/String;
    .restart local v6    # "grp":Ljava/lang/String;
    .restart local v7    # "hr":Ljava/lang/String;
    .restart local v8    # "min":Ljava/lang/String;
    .restart local v9    # "mo":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v13    # "usr":Ljava/lang/String;
    .restart local v15    # "yr":Ljava/lang/String;
    :catch_1
    move-exception v16

    goto/16 :goto_0
.end method
