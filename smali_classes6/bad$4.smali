.class final Lbad$4;
.super Ljava/lang/Object;
.source "CreateEventActivityPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbad;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbad;


# direct methods
.method constructor <init>(Lbad;)V
    .locals 0
    .param p1, "this$0"    # Lbad;

    .prologue
    .line 602
    iput-object p1, p0, Lbad$4;->a:Lbad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 605
    return-void
.end method
