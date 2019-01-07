.class final Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$6;
.super Ljava/lang/Object;
.source "TeleConfDialPadLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$6;->a:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method
