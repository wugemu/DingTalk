.class final Ldfe$6;
.super Ljava/lang/Object;
.source "ShoppingChatPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldfe;


# direct methods
.method constructor <init>(Ldfe;)V
    .locals 0
    .param p1, "this$0"    # Ldfe;

    .prologue
    .line 325
    iput-object p1, p0, Ldfe$6;->a:Ldfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 328
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "customer_massage_Shortcut_edit_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Ldfe$6;->a:Ldfe;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ldfe;->a(Ldfe;I)V

    .line 330
    return-void
.end method
