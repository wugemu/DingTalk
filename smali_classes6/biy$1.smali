.class final Lbiy$1;
.super Ljava/lang/Object;
.source "UnReadViewHolderV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbiy;


# direct methods
.method constructor <init>(Lbiy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbiy;

    .prologue
    .line 59
    iput-object p1, p0, Lbiy$1;->b:Lbiy;

    iput-object p2, p0, Lbiy$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lbiy$1;->b:Lbiy;

    invoke-static {v0}, Lbiy;->a(Lbiy;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lbiy$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 63
    invoke-static {}, Lbjz;->a()V

    .line 64
    return-void
.end method
