.class public final Lcpo$2;
.super Ljava/lang/Object;
.source "RollbackManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcpo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic b:Lcpo;


# direct methods
.method public constructor <init>(Lcpo;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcpo;

    .prologue
    .line 53
    iput-object p1, p0, Lcpo$2;->b:Lcpo;

    iput-object p2, p0, Lcpo$2;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    iget-object v0, p0, Lcpo$2;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    const/4 v0, 0x1

    return v0
.end method
