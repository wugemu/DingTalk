.class final Ldfb$2$1;
.super Ljava/lang/Object;
.source "EducationChatPlugin.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfb$2;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldfb$2;


# direct methods
.method constructor <init>(Ldfb$2;)V
    .locals 0
    .param p1, "this$1"    # Ldfb$2;

    .prologue
    .line 125
    iput-object p1, p0, Ldfb$2$1;->a:Ldfb$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    check-cast p1, Ljava/util/List;

    .line 1128
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "EducationChatPlugin"

    const-string/jumbo v2, "rpcEducationTeacherIds getUidListByOrgIdAndStaffId-->onDataReceived"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Ldfb$2$1;->a:Ldfb$2;

    iget-object v0, v0, Ldfb$2;->b:Ldfb;

    invoke-static {v0}, Ldfb;->b(Ldfb;)V

    .line 1130
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1131
    :cond_0
    sget v0, Lctk$i;->dt_im_education_get_tag_entity_emty:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1132
    :goto_0
    return-void

    .line 1134
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Ldfb$2$1;->a:Ldfb$2;

    iget-object v1, v1, Ldfb$2;->b:Ldfb;

    iget-object v1, v1, Ldfb;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/conversation_search.html"

    new-instance v2, Ldfb$2$1$1;

    invoke-direct {v2, p0, p1}, Ldfb$2$1$1;-><init>(Ldfb$2$1;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "EducationChatPlugin"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "rpcEducationTeacherIds getUidListByOrgIdAndStaffId-->onException errorcode:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",error:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Ldfb$2$1;->a:Ldfb$2;

    iget-object v0, v0, Ldfb$2;->b:Ldfb;

    invoke-static {v0}, Ldfb;->b(Ldfb;)V

    .line 156
    sget v0, Lctk$i;->dt_im_education_get_tag_entity_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 157
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 150
    return-void
.end method
