.class final Lhho$2;
.super Ljava/lang/Object;
.source "FCPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhho;


# direct methods
.method constructor <init>(Lhho;)V
    .locals 0
    .param p1, "this$0"    # Lhho;

    .prologue
    .line 85
    iput-object p1, p0, Lhho$2;->a:Lhho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
