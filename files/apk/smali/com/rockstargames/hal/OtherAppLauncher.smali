.class public Lcom/rockstargames/hal/OtherAppLauncher;
.super Ljava/lang/Object;
.source "OtherAppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;,
        Lcom/rockstargames/hal/OtherAppLauncher$Market;
    }
.end annotation


# static fields
.field private static final PLAY_gta3:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

.field private static final PLAY_vc:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v2, "com.rockstar.gta3"

    invoke-direct {v1, v2, v8}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v2, "com.rockstar.gta3ger"

    const-string v3, "DE"

    invoke-direct {v1, v2, v3}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v2, "com.rockstar.gta3jpn"

    const-string v3, "JP"

    invoke-direct {v1, v2, v3}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-instance v2, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v3, "com.rockstar.gta3aus"

    const-string v4, "AU"

    invoke-direct {v2, v3, v4}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_gta3:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    .line 39
    new-array v0, v7, [Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v2, "com.rockstargames.gtavc"

    invoke-direct {v1, v2, v8}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const-string v2, "com.rockstargames.gtavcger"

    const-string v3, "DE"

    invoke-direct {v1, v2, v3}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_vc:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static getVersions(Lcom/rockstargames/hal/OtherAppLauncher$Market;Ljava/lang/String;Ljava/lang/String;)[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;
    .locals 4
    .param p0, "market"    # Lcom/rockstargames/hal/OtherAppLauncher$Market;
    .param p1, "packageId"    # Ljava/lang/String;
    .param p2, "marketId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 48
    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->PLAY:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_gta3:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->packageIdentifer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_gta3:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    .line 58
    :goto_0
    return-object v0

    .line 52
    :cond_0
    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher$Market;->PLAY:Lcom/rockstargames/hal/OtherAppLauncher$Market;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_vc:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->packageIdentifer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/rockstargames/hal/OtherAppLauncher;->PLAY_vc:[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    new-instance v1, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static openAppOrStorePage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "whichMarket"    # Ljava/lang/String;
    .param p1, "packageID"    # Ljava/lang/String;
    .param p2, "marketID"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/rockstargames/hal/OtherAppLauncher$Market;->valueOf(Ljava/lang/String;)Lcom/rockstargames/hal/OtherAppLauncher$Market;

    move-result-object v7

    .line 69
    .local v7, "market":Lcom/rockstargames/hal/OtherAppLauncher$Market;
    invoke-static {v7, p1, p2}, Lcom/rockstargames/hal/OtherAppLauncher;->getVersions(Lcom/rockstargames/hal/OtherAppLauncher$Market;Ljava/lang/String;Ljava/lang/String;)[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;

    move-result-object v8

    .line 72
    .local v8, "versions":[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;
    const/4 v3, 0x0

    .line 74
    .local v3, "intent":Landroid/content/Intent;
    move-object v0, v8

    .local v0, "arr$":[Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v4, v0, v2

    .line 76
    .local v4, "iv":Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->packageIdentifer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 82
    .end local v4    # "iv":Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;
    :cond_0
    if-eqz v3, :cond_2

    .line 84
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    :goto_1
    return-void

    .line 74
    .restart local v4    # "iv":Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v4    # "iv":Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "locale":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    array-length v9, v8

    if-ge v1, v9, :cond_3

    .line 92
    aget-object v9, v8, v1

    iget-object v9, v9, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->locale:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 94
    aget-object v9, v8, v1

    iget-object p2, v9, Lcom/rockstargames/hal/OtherAppLauncher$InternationalVersion;->marketIdentifier:Ljava/lang/String;

    .line 99
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "i":I
    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "i":Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lcom/rockstargames/hal/OtherAppLauncher$Market;->prefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 90
    .local v1, "i":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
