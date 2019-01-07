.class final Lbiu$11;
.super Ljava/lang/Object;
.source "SingleChatTaskDingHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lbiu;


# direct methods
.method constructor <init>(Lbiu;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lbiu;

    .prologue
    .line 693
    iput-object p1, p0, Lbiu$11;->b:Lbiu;

    iput-object p2, p0, Lbiu$11;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 696
    iget-object v0, p0, Lbiu$11;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 697
    iget-object v0, p0, Lbiu$11;->b:Lbiu;

    .line 1065
    iget-object v0, v0, Lbiu;->a:Landroid/app/Activity;

    .line 697
    iget-object v1, p0, Lbiu$11;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 698
    return-void
.end method
