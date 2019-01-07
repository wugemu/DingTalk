.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2$1;
.super Ljava/lang/Object;
.source "WifiFragment.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 2
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 651
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$b$2;->a:Z

    .line 652
    return-void
.end method
