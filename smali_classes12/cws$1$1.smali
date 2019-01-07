.class final Lcws$1$1;
.super Ljava/lang/Object;
.source "QuickReplyItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcws$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcws$1;


# direct methods
.method constructor <init>(Lcws$1;)V
    .locals 0
    .param p1, "this$1"    # Lcws$1;

    .prologue
    .line 280
    iput-object p1, p0, Lcws$1$1;->a:Lcws$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcws$1$1;->a:Lcws$1;

    iget-object v0, v0, Lcws$1;->a:Lcws;

    invoke-virtual {v0}, Lcws;->notifyDataSetChanged()V

    .line 284
    return-void
.end method
