.class final Liey$1;
.super Ljava/lang/Object;
.source "AVDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liey;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liey;


# direct methods
.method constructor <init>(Liey;)V
    .locals 0
    .param p1, "this$0"    # Liey;

    .prologue
    .line 245
    iput-object p1, p0, Liey$1;->a:Liey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Liey$1;->a:Liey;

    invoke-static {v0}, Liey;->a(Liey;)Liej;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Liey$1;->a:Liey;

    invoke-static {v0}, Liey;->a(Liey;)Liej;

    move-result-object v0

    invoke-virtual {v0}, Liej;->a()V

    .line 253
    :cond_0
    return-void
.end method
