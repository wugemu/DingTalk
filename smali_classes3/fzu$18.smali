.class final Lfzu$18;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2134
    iput-object p1, p0, Lfzu$18;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lfzu$18;->b:Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    iput-object p3, p0, Lfzu$18;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2134
    check-cast p1, Ljava/lang/Boolean;

    .line 4022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 3137
    if-eqz v0, :cond_0

    .line 3138
    iget-object v0, p0, Lfzu$18;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "is_space_admin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3140
    :cond_0
    iget-object v1, p0, Lfzu$18;->b:Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    iget-object v2, p0, Lfzu$18;->c:Landroid/content/Context;

    iget-object v3, p0, Lfzu$18;->a:Landroid/os/Bundle;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    .line 2134
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2149
    iget-object v1, p0, Lfzu$18;->b:Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    iget-object v2, p0, Lfzu$18;->c:Landroid/content/Context;

    iget-object v3, p0, Lfzu$18;->a:Landroid/os/Bundle;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    .line 2150
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2145
    return-void
.end method
