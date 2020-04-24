.class Lcom/wardrumstudios/utils/WarGameService$2;
.super Ljava/lang/Object;
.source "WarGameService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wardrumstudios/utils/WarGameService;->onSignInSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wardrumstudios/utils/WarGameService;


# direct methods
.method constructor <init>(Lcom/wardrumstudios/utils/WarGameService;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 227
    check-cast p1, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/wardrumstudios/utils/WarGameService$2;->onResult(Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;)V
    .locals 12
    .param p1, "result"    # Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    .line 230
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v5

    .line 231
    .local v5, "statusCode":I
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;->getAchievements()Lcom/google/android/gms/games/achievement/AchievementBuffer;

    move-result-object v0

    .line 233
    .local v0, "buffer":Lcom/google/android/gms/games/achievement/AchievementBuffer;
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v10, "Achivements loaded!"

    invoke-virtual {v8, v10}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 234
    if-eqz v5, :cond_0

    .line 237
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v9, "Error while loading achievements."

    invoke-virtual {v8, v9}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->getCount()I

    move-result v1

    .line 244
    .local v1, "count":I
    new-array v3, v1, [Ljava/lang/String;

    .line 245
    .local v3, "ids":[Ljava/lang/String;
    new-array v4, v1, [Z

    .line 246
    .local v4, "states":[Z
    new-array v6, v1, [I

    .line 247
    .local v6, "steps":[I
    new-array v7, v1, [I

    .line 250
    .local v7, "totalSteps":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 252
    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->get(I)Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    .line 255
    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->get(I)Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v8

    if-nez v8, :cond_1

    move v8, v9

    :goto_2
    aput-boolean v8, v4, v2

    .line 258
    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->get(I)Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v8

    if-ne v8, v9, :cond_2

    .line 259
    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->get(I)Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v8

    aput v8, v6, v2

    .line 260
    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->get(I)Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v8

    aput v8, v7, v2

    .line 250
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 262
    :cond_2
    aput v11, v6, v2

    .line 263
    aput v11, v7, v2

    goto :goto_3

    .line 268
    :cond_3
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v9, "Notifying down to native"

    invoke-virtual {v8, v9}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 269
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    invoke-virtual {v8, v3, v4, v6, v7}, Lcom/wardrumstudios/utils/WarGameService;->notifyAchievementsLoaded([Ljava/lang/String;[Z[I[I)V

    .line 270
    iget-object v8, p0, Lcom/wardrumstudios/utils/WarGameService$2;->this$0:Lcom/wardrumstudios/utils/WarGameService;

    const-string v9, "Done. Notifying down to native"

    invoke-virtual {v8, v9}, Lcom/wardrumstudios/utils/WarGameService;->debugLog(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->close()V

    goto :goto_0
.end method
