.class final Ldjm$6$1;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjm$6;->onDataReceived(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjm$6;


# direct methods
.method constructor <init>(Ldjm$6;)V
    .locals 0
    .param p1, "this$0"    # Ldjm$6;

    .prologue
    .line 317
    iput-object p1, p0, Ldjm$6$1;->a:Ldjm$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 320
    sget v0, Lctk$i;->dt_ding_peg_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 321
    return-void
.end method
