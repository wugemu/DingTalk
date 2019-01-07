.class final Larj$3;
.super Ljava/lang/Object;
.source "DingCalendarEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larj;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larj;


# direct methods
.method constructor <init>(Larj;)V
    .locals 0
    .param p1, "this$0"    # Larj;

    .prologue
    .line 230
    iput-object p1, p0, Larj$3;->a:Larj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Larj$3;->a:Larj;

    .line 1040
    iget-object v0, v0, Larj;->d:Larc;

    .line 233
    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Larj$3;->a:Larj;

    .line 2040
    iget-object v0, v0, Larj;->d:Larc;

    .line 234
    invoke-interface {v0}, Larc;->a()V

    .line 236
    :cond_0
    return-void
.end method
