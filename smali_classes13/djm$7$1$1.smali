.class final Ldjm$7$1$1;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjm$7$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjm$7$1;


# direct methods
.method constructor <init>(Ldjm$7$1;)V
    .locals 0
    .param p1, "this$1"    # Ldjm$7$1;

    .prologue
    .line 379
    iput-object p1, p0, Ldjm$7$1$1;->a:Ldjm$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 382
    sget v0, Lctk$i;->dt_message_not_exsit:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 383
    return-void
.end method
