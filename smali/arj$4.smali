.class final Larj$4;
.super Ljava/lang/Object;
.source "DingCalendarEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larj;
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
    .line 241
    iput-object p1, p0, Larj$4;->a:Larj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Larj$4;->a:Larj;

    .line 1040
    iget-object v0, v0, Larj;->e:Lard;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Larj$4;->a:Larj;

    .line 2040
    iget-object v0, v0, Larj;->e:Lard;

    .line 245
    invoke-interface {v0}, Lard;->a()V

    .line 247
    :cond_0
    return-void
.end method
