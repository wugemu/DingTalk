.class public final Lgqf;
.super Ljava/lang/Object;
.source "SpaceLinkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Ljava/lang/String;
    .locals 3
    .param p0, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 96
    sget v1, Lfzs$h;->dt_cspace_unknown_file:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceType:Ljava/lang/String;

    invoke-static {v1}, Lgqu;->a(Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "spaceType":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->isRootFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lgpr;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_2
    sget v1, Lfzs$h;->dt_cspace_unknown_file:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
