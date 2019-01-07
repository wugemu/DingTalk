.class public final Lhrw$3;
.super Ljava/lang/Object;
.source "PopupDropListManager.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhrw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhrw$b;

.field final synthetic b:Lhrw;


# direct methods
.method public constructor <init>(Lhrw;Lhrw$b;)V
    .locals 0
    .param p1, "this$0"    # Lhrw;

    .prologue
    .line 112
    iput-object p1, p0, Lhrw$3;->b:Lhrw;

    iput-object p2, p0, Lhrw$3;->a:Lhrw$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lhrw$3;->a:Lhrw$b;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lhrw$3;->a:Lhrw$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhrw$b;->a(Lhrv;)V

    .line 118
    :cond_0
    return-void
.end method
