.class public final Lcpo$a;
.super Ljava/lang/Object;
.source "RollbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcpo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/graphics/Rect;

.field c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcpo$a;->b:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Lcpo$a$1;

    invoke-direct {v0, p0}, Lcpo$a$1;-><init>(Lcpo$a;)V

    iput-object v0, p0, Lcpo$a;->c:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcpo$a$2;

    invoke-direct {v0, p0}, Lcpo$a$2;-><init>(Lcpo$a;)V

    iput-object v0, p0, Lcpo$a;->d:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcpo$a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcpo$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcpo$a;->d:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcpo$a;->a:Landroid/view/View;

    .line 107
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lcpo$a;->a:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcpo$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcpo$a;->d:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 100
    :cond_0
    return-void
.end method
