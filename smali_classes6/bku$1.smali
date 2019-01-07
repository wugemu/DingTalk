.class final Lbku$1;
.super Ljava/lang/Object;
.source "DingSubFilterDropDownView2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbku;->a(Landroid/app/Activity;Landroid/view/ViewManager;Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbku;


# direct methods
.method constructor <init>(Lbku;)V
    .locals 0
    .param p1, "this$0"    # Lbku;

    .prologue
    .line 45
    iput-object p1, p0, Lbku$1;->a:Lbku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lbku$1;->a:Lbku;

    .line 1026
    iget-object v0, v0, Lbku;->a:Lbkw;

    .line 48
    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lbku$1;->a:Lbku;

    .line 2026
    iget-object v0, v0, Lbku;->a:Lbkw;

    .line 49
    invoke-interface {v0}, Lbkw;->a()V

    .line 51
    :cond_0
    return-void
.end method
