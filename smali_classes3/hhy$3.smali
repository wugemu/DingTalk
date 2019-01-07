.class final Lhhy$3;
.super Ljava/lang/Object;
.source "HpmAccessor.java"

# interfaces
.implements Lcom/alipay/android/h5appmanager/TrafficMonitorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhy$b;

.field final synthetic b:Lhhy;


# direct methods
.method constructor <init>(Lhhy;Lhhy$b;)V
    .locals 0
    .param p1, "this$0"    # Lhhy;

    .prologue
    .line 311
    iput-object p1, p0, Lhhy$3;->b:Lhhy;

    iput-object p2, p0, Lhhy$3;->a:Lhhy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final endStats(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lhhy$3;->a:Lhhy$b;

    invoke-interface {v0, p1}, Lhhy$b;->b(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public final startStats(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lhhy$3;->a:Lhhy$b;

    invoke-interface {v0, p1}, Lhhy$b;->a(Ljava/lang/String;)V

    .line 315
    return-void
.end method
