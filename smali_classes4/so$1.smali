.class final Lso$1;
.super Ljava/lang/Object;
.source "BasePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lso;


# direct methods
.method constructor <init>(Lso;)V
    .locals 0
    .param p1, "this$0"    # Lso;

    .prologue
    .line 147
    iput-object p1, p0, Lso$1;->a:Lso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lso$1;->a:Lso;

    invoke-virtual {v0}, Lso;->i()V

    .line 151
    return-void
.end method
