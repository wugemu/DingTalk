.class final Lcva$4;
.super Ljava/lang/Object;
.source "EncryptVoiceViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcva;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcva;


# direct methods
.method constructor <init>(Lcva;)V
    .locals 0
    .param p1, "this$0"    # Lcva;

    .prologue
    .line 108
    iput-object p1, p0, Lcva$4;->a:Lcva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    iget-object v0, p0, Lcva$4;->a:Lcva;

    invoke-virtual {v0, p2}, Lcva;->a(Landroid/view/MotionEvent;)V

    .line 112
    const/4 v0, 0x0

    return v0
.end method
