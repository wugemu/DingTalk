.class public final Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager;
.super Ljava/lang/Object;
.source "VoiceModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "BBLVoiceModeKey#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 49
    .local v3, "modeValue":I
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    .line 50
    .local v2, "mode":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    if-eq v3, v8, :cond_0

    .line 51
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->values()[Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 52
    .local v0, "e":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    iget v7, v0, Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;->modeValue:I

    if-ne v7, v3, :cond_1

    .line 53
    move-object v2, v0

    .line 58
    .end local v0    # "e":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_0
    return-object v2

    .line 51
    .restart local v0    # "e":Lcom/alibaba/android/dingtalkbase/widgets/VoiceModeManager$VoiceMode;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
