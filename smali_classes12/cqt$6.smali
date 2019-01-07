.class final Lcqt$6;
.super Ljava/lang/Object;
.source "CommentInputPanelWrapper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqt;


# direct methods
.method constructor <init>(Lcqt;)V
    .locals 0
    .param p1, "this$0"    # Lcqt;

    .prologue
    .line 200
    iput-object p1, p0, Lcqt$6;->a:Lcqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 203
    iget-object v0, p0, Lcqt$6;->a:Lcqt;

    invoke-virtual {v0}, Lcqt;->a()V

    .line 204
    const/4 v0, 0x0

    return v0
.end method
