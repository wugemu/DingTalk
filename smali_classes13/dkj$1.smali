.class final Ldkj$1;
.super Ljava/lang/Object;
.source "QuickPraiseController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldkj;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Ldpy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldkj;


# direct methods
.method constructor <init>(Ldkj;)V
    .locals 0
    .param p1, "this$0"    # Ldkj;

    .prologue
    .line 127
    iput-object p1, p0, Ldkj$1;->a:Ldkj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Ldkj$1;->a:Ldkj;

    .line 1055
    invoke-virtual {v0}, Ldkj;->c()V

    .line 131
    return-void
.end method
