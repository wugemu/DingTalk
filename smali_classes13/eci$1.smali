.class final Leci$1;
.super Ljava/lang/Object;
.source "QuickMessageReplyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leci;


# direct methods
.method constructor <init>(Leci;)V
    .locals 0
    .param p1, "this$0"    # Leci;

    .prologue
    .line 134
    iput-object p1, p0, Leci$1;->a:Leci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Leci$1;->a:Leci;

    invoke-virtual {v0}, Leci;->dismiss()V

    .line 138
    return-void
.end method
