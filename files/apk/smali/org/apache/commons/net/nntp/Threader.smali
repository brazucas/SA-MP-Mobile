.class public Lorg/apache/commons/net/nntp/Threader;
.super Ljava/lang/Object;
.source "Threader.java"


# instance fields
.field private bogusIdCount:I

.field private idTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/ThreadContainer;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lorg/apache/commons/net/nntp/ThreadContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    return-void
.end method

.method private buildContainer(Lorg/apache/commons/net/nntp/Threadable;)V
    .locals 14
    .param p1, "threadable"    # Lorg/apache/commons/net/nntp/Threadable;

    .prologue
    .line 102
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadId()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "id":Ljava/lang/String;
    iget-object v11, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 107
    .local v1, "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-eqz v1, :cond_0

    .line 108
    iget-object v11, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v11, :cond_4

    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<Bogus-id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    const/4 v1, 0x0

    .line 119
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 120
    new-instance v1, Lorg/apache/commons/net/nntp/ThreadContainer;

    .end local v1    # "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    invoke-direct {v1}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 121
    .restart local v1    # "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    iput-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 122
    iget-object v11, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v11, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    const/4 v5, 0x0

    .line 129
    .local v5, "parentRef":Lorg/apache/commons/net/nntp/ThreadContainer;
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadReferences()[Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "references":[Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v8, v0, v2

    .line 132
    .local v8, "refString":Ljava/lang/String;
    iget-object v11, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 135
    .local v7, "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-nez v7, :cond_2

    .line 136
    new-instance v7, Lorg/apache/commons/net/nntp/ThreadContainer;

    .end local v7    # "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    invoke-direct {v7}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 137
    .restart local v7    # "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v11, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v11, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_2
    if-eqz v5, :cond_3

    iget-object v11, v7, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v11, :cond_3

    if-eq v5, v7, :cond_3

    invoke-virtual {v7, v5}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 148
    iput-object v5, v7, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 149
    iget-object v11, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v11, v7, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 150
    iput-object v7, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 152
    :cond_3
    move-object v5, v7

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "parentRef":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v7    # "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v8    # "refString":Ljava/lang/String;
    .end local v9    # "references":[Ljava/lang/String;
    :cond_4
    iput-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    goto :goto_0

    .line 158
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "parentRef":Lorg/apache/commons/net/nntp/ThreadContainer;
    .restart local v9    # "references":[Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_7

    if-eq v5, v1, :cond_6

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 161
    :cond_6
    const/4 v5, 0x0

    .line 167
    :cond_7
    iget-object v11, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v11, :cond_b

    .line 170
    const/4 v6, 0x0

    .local v6, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v11, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v10, v11, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 171
    .local v10, "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_2
    if-eqz v10, :cond_8

    .line 173
    if-ne v10, v1, :cond_9

    .line 178
    :cond_8
    if-nez v10, :cond_a

    .line 179
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Didnt find "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in parent"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 172
    :cond_9
    move-object v6, v10

    iget-object v10, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    .line 187
    :cond_a
    if-nez v6, :cond_d

    .line 188
    iget-object v11, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v12, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v12, v11, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 193
    :goto_3
    const/4 v11, 0x0

    iput-object v11, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 194
    const/4 v11, 0x0

    iput-object v11, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 198
    .end local v6    # "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v10    # "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_b
    if-eqz v5, :cond_c

    .line 199
    iput-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 200
    iget-object v11, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v11, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 201
    iput-object v1, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 203
    :cond_c
    return-void

    .line 190
    .restart local v6    # "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    .restart local v10    # "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_d
    iget-object v11, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v11, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_3
.end method

.method private findRootSet()Lorg/apache/commons/net/nntp/ThreadContainer;
    .locals 7

    .prologue
    .line 210
    new-instance v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v3}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 211
    .local v3, "root":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 213
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 215
    .local v2, "key":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 216
    .local v0, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v4, :cond_0

    .line 217
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v4, :cond_1

    .line 218
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c.next is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    :cond_1
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 222
    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    .line 225
    .end local v0    # "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    return-object v3
.end method

.method private gatherSubjects()V
    .locals 14

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 299
    .local v1, "count":I
    iget-object v10, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v0, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_0
    if-eqz v0, :cond_0

    .line 300
    add-int/lit8 v1, v1, 0x1

    .line 299
    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    .line 304
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    int-to-double v10, v1

    const-wide v12, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v10, v12

    double-to-int v10, v10

    const v11, 0x3f666666    # 0.9f

    invoke-direct {v7, v10, v11}, Ljava/util/HashMap;-><init>(IF)V

    .line 305
    .local v7, "subjectTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/commons/net/nntp/ThreadContainer;>;"
    const/4 v1, 0x0

    .line 307
    iget-object v10, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_1
    if-eqz v0, :cond_6

    .line 308
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 313
    .local v9, "threadable":Lorg/apache/commons/net/nntp/Threadable;
    if-nez v9, :cond_1

    .line 314
    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v9, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 317
    :cond_1
    invoke-interface {v9}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "subj":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 307
    :cond_2
    :goto_2
    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 332
    .local v3, "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-eqz v3, :cond_5

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v10, :cond_4

    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v10, :cond_5

    :cond_4
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v10, :cond_2

    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v10}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v10, :cond_2

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v10}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v10

    if-nez v10, :cond_2

    .line 338
    :cond_5
    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 344
    .end local v3    # "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v6    # "subj":Ljava/lang/String;
    .end local v9    # "threadable":Lorg/apache/commons/net/nntp/Threadable;
    :cond_6
    if-nez v1, :cond_7

    .line 441
    :goto_3
    return-void

    .line 351
    :cond_7
    const/4 v4, 0x0

    .local v4, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v10, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 352
    .local v5, "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_4
    if-eqz v0, :cond_14

    .line 354
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 357
    .restart local v9    # "threadable":Lorg/apache/commons/net/nntp/Threadable;
    if-nez v9, :cond_8

    .line 358
    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v9, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 361
    :cond_8
    invoke-interface {v9}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v6

    .line 364
    .restart local v6    # "subj":Ljava/lang/String;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_a

    .line 353
    :cond_9
    :goto_5
    move-object v4, v0

    move-object v0, v5

    if-nez v5, :cond_13

    const/4 v5, 0x0

    :goto_6
    goto :goto_4

    .line 368
    :cond_a
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 370
    .restart local v3    # "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-eq v3, v0, :cond_9

    .line 376
    if-nez v4, :cond_b

    .line 377
    iget-object v10, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v11, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 381
    :goto_7
    const/4 v10, 0x0

    iput-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 383
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v10, :cond_f

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v10, :cond_f

    .line 386
    iget-object v8, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 387
    .local v8, "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_8
    if-eqz v8, :cond_c

    iget-object v10, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v10, :cond_c

    .line 388
    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_8

    .line 379
    .end local v8    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_b
    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_7

    .line 392
    .restart local v8    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_c
    if-eqz v8, :cond_d

    .line 393
    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 396
    :cond_d
    iget-object v8, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_9
    if-eqz v8, :cond_e

    .line 397
    iput-object v3, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 396
    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_9

    .line 400
    :cond_e
    const/4 v10, 0x0

    iput-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 435
    .end local v8    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_a
    move-object v0, v4

    goto :goto_5

    .line 401
    :cond_f
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v10, :cond_10

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v10, :cond_11

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v10}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v10}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v10

    if-nez v10, :cond_11

    .line 407
    :cond_10
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 408
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 409
    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a

    .line 413
    :cond_11
    new-instance v2, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v2}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 414
    .local v2, "newc":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v10, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 415
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 417
    iget-object v8, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 418
    .restart local v8    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_b
    if-eqz v8, :cond_12

    .line 421
    iput-object v2, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 419
    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_b

    .line 424
    :cond_12
    const/4 v10, 0x0

    iput-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 425
    const/4 v10, 0x0

    iput-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 427
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 428
    iput-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 431
    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 432
    iput-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a

    .line 353
    .end local v2    # "newc":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v3    # "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v8    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_13
    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto/16 :goto_6

    .line 438
    .end local v6    # "subj":Ljava/lang/String;
    .end local v9    # "threadable":Lorg/apache/commons/net/nntp/Threadable;
    :cond_14
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 439
    const/4 v7, 0x0

    .line 441
    goto/16 :goto_3
.end method

.method private pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V
    .locals 6
    .param p1, "parent"    # Lorg/apache/commons/net/nntp/ThreadContainer;

    .prologue
    .line 234
    const/4 v3, 0x0

    .local v3, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v0, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v0, "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 235
    .local v2, "next":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_0
    if-eqz v0, :cond_8

    .line 241
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_2

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_2

    .line 242
    if-nez v3, :cond_1

    .line 243
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 249
    :goto_1
    move-object v0, v3

    .line 236
    :cond_0
    :goto_2
    move-object v3, v0

    .line 237
    move-object v0, v2

    .line 238
    if-nez v0, :cond_7

    const/4 v2, 0x0

    :goto_3
    goto :goto_0

    .line 245
    :cond_1
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    .line 253
    :cond_2
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_6

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_3

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_6

    .line 260
    :cond_3
    iget-object v1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 263
    .local v1, "kids":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-nez v3, :cond_4

    .line 264
    iput-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 271
    :goto_4
    move-object v4, v1

    .local v4, "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_5
    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_5

    .line 272
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 271
    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_5

    .line 266
    .end local v4    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_4
    iput-object v1, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_4

    .line 275
    .restart local v4    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_5
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 276
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 280
    move-object v2, v1

    .line 283
    move-object v0, v3

    .line 284
    goto :goto_2

    .end local v1    # "kids":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v4    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_6
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_0

    .line 287
    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    goto :goto_2

    .line 238
    :cond_7
    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_3

    .line 290
    :cond_8
    return-void
.end method


# virtual methods
.method public thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/commons/net/nntp/Threadable;>;"
    const/4 v4, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-object v4

    .line 62
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    .line 65
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/Threadable;

    .line 66
    .local v3, "t":Lorg/apache/commons/net/nntp/Threadable;
    invoke-interface {v3}, Lorg/apache/commons/net/nntp/Threadable;->isDummy()Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    invoke-direct {p0, v3}, Lorg/apache/commons/net/nntp/Threader;->buildContainer(Lorg/apache/commons/net/nntp/Threadable;)V

    goto :goto_1

    .line 71
    .end local v3    # "t":Lorg/apache/commons/net/nntp/Threadable;
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Threader;->findRootSet()Lorg/apache/commons/net/nntp/ThreadContainer;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 72
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 73
    iput-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    .line 75
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {p0, v5}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    .line 77
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v5}, Lorg/apache/commons/net/nntp/ThreadContainer;->reverseChildren()V

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Threader;->gatherSubjects()V

    .line 80
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_3

    .line 81
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "root node has a next:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v1, "r":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_2
    if-eqz v1, :cond_5

    .line 85
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_4

    .line 86
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v5}, Lorg/apache/commons/net/nntp/Threadable;->makeDummy()Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v5

    iput-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 84
    :cond_4
    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    .line 90
    :cond_5
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_6

    move-object v2, v4

    .line 91
    .local v2, "result":Lorg/apache/commons/net/nntp/Threadable;
    :goto_3
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v5}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    .line 92
    iput-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v4, v2

    .line 94
    goto/16 :goto_0

    .line 90
    .end local v2    # "result":Lorg/apache/commons/net/nntp/Threadable;
    :cond_6
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    goto :goto_3
.end method

.method public thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/commons/net/nntp/Threadable;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v0

    return-object v0
.end method

.method public thread([Lorg/apache/commons/net/nntp/Threadable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 1
    .param p1, "messages"    # [Lorg/apache/commons/net/nntp/Threadable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v0

    return-object v0
.end method
