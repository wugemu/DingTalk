.class final Lgll$2;
.super Ljava/lang/Object;
.source "SpaceSaveMessageManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic d:Lgll;


# direct methods
.method constructor <init>(Lgll;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JLcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 1
    .param p1, "this$0"    # Lgll;

    .prologue
    .line 174
    iput-object p1, p0, Lgll$2;->d:Lgll;

    iput-object p2, p0, Lgll$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-wide p3, p0, Lgll$2;->b:J

    iput-object p5, p0, Lgll$2;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 174
    check-cast p1, Ljava/lang/String;

    .line 3177
    iget-object v0, p0, Lgll$2;->d:Lgll;

    .line 4044
    invoke-virtual {v0}, Lgll;->a()V

    .line 3178
    iget-object v0, p0, Lgll$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgll$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgll$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3179
    iget-object v0, p0, Lgll$2;->d:Lgll;

    .line 5044
    iget-object v1, v0, Lgll;->a:Landroid/content/Context;

    .line 3179
    iget-wide v2, p0, Lgll$2;->b:J

    iget-object v4, p0, Lgll$2;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v0, p0, Lgll$2;->d:Lgll;

    .line 6044
    iget-object v6, v0, Lgll;->i:Ljava/lang/String;

    .line 3179
    sget-object v7, Lfzu;->d:Lcma;

    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;JLcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    :goto_0
    return-void

    .line 3181
    :cond_0
    iget-object v0, p0, Lgll$2;->d:Lgll;

    .line 7044
    iget-object v0, v0, Lgll;->a:Landroid/content/Context;

    .line 3181
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, p0, Lgll$2;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v2, p0, Lgll$2;->d:Lgll;

    .line 8044
    iget-object v2, v2, Lgll;->i:Ljava/lang/String;

    .line 3181
    invoke-static {v0, v1, v5, v2}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 191
    iget-object v0, p0, Lgll$2;->d:Lgll;

    .line 1044
    invoke-virtual {v0}, Lgll;->a()V

    .line 192
    iget-object v0, p0, Lgll$2;->d:Lgll;

    .line 2044
    iget-object v1, v0, Lgll;->a:Landroid/content/Context;

    .line 192
    iget-wide v2, p0, Lgll$2;->b:J

    iget-object v4, p0, Lgll$2;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v5, 0x0

    iget-object v0, p0, Lgll$2;->d:Lgll;

    .line 3044
    iget-object v6, v0, Lgll;->i:Ljava/lang/String;

    .line 192
    sget-object v7, Lfzu;->d:Lcma;

    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;JLcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 193
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 187
    return-void
.end method
