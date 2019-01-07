.class public final Lhdy$2;
.super Ljava/lang/Object;
.source "FileChooserDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdy;


# direct methods
.method public constructor <init>(Lhdy;)V
    .locals 0
    .param p1, "this$0"    # Lhdy;

    .prologue
    .line 206
    iput-object p1, p0, Lhdy$2;->a:Lhdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 209
    iget-object v0, p0, Lhdy$2;->a:Lhdy;

    invoke-static {v0}, Lhdy;->b(Lhdy;)V

    .line 210
    return-void
.end method
