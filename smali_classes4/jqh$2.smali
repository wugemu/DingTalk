.class final Ljqh$2;
.super Ljava/lang/Object;
.source "AppLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljqh$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljqh;


# direct methods
.method constructor <init>(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljqh;

    .prologue
    .line 770
    iput-object p1, p0, Ljqh$2;->d:Ljqh;

    iput-object p2, p0, Ljqh$2;->a:Ljqh$b;

    iput-object p3, p0, Ljqh$2;->b:Ljava/lang/String;

    iput-object p4, p0, Ljqh$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 773
    iget-object v0, p0, Ljqh$2;->a:Ljqh$b;

    iget-object v1, p0, Ljqh$2;->d:Ljqh;

    .line 1049
    iget-object v1, v1, Ljqh;->b:Landroid/content/Context;

    .line 773
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ljrg$d;->wml_default_error_title:I

    .line 774
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u4e00\u5b9a\u662f\u54ea\u91cc\u51fa\u4e86\u95ee\u9898\uff0c\u8bf7\u7a0d\u540e\u8bd5\u8bd5"

    iget-object v3, p0, Ljqh$2;->b:Ljava/lang/String;

    iget-object v4, p0, Ljqh$2;->c:Ljava/lang/String;

    const/4 v5, 0x0

    .line 773
    invoke-interface/range {v0 .. v5}, Ljqh$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    .line 775
    return-void
.end method
