.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment$2;
.super Ljava/lang/Object;
.source "WMLCustomH5Fragment.java"

# interfaces
.implements Ljry$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment$2;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "extension"    # [Ljava/lang/Object;

    .prologue
    .line 129
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment$2;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;)Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FAIL_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "url"

    aput-object v2, v5, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment$2;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->b(Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 1279
    const/4 v0, 0x5

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->H5:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    return-void
.end method
