.class final Lcam$a$2$1;
.super Ljava/lang/Object;
.source "RedPacketsReceiverListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcam$a$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcgc;

.field final synthetic b:Lcam$a$2;


# direct methods
.method constructor <init>(Lcam$a$2;Lcgc;)V
    .locals 0
    .param p1, "this$2"    # Lcam$a$2;

    .prologue
    .line 101
    iput-object p1, p0, Lcam$a$2$1;->b:Lcam$a$2;

    iput-object p2, p0, Lcam$a$2$1;->a:Lcgc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcam$a$2$1;->a:Lcgc;

    iget-object v0, v0, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 105
    return-void
.end method
