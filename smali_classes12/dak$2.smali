.class final Ldak$2;
.super Ljava/lang/Object;
.source "UserVoiceViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldak;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldak;


# direct methods
.method constructor <init>(Ldak;)V
    .locals 0
    .param p1, "this$0"    # Ldak;

    .prologue
    .line 60
    iput-object p1, p0, Ldak$2;->a:Ldak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    iget-object v0, p0, Ldak$2;->a:Ldak;

    invoke-virtual {v0, p2}, Ldak;->a(Landroid/view/MotionEvent;)V

    .line 64
    const/4 v0, 0x0

    return v0
.end method
