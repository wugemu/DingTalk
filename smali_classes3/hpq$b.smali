.class final Lhpq$b;
.super Ljava/lang/Object;
.source "AsyncHydroNetStack.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/NetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lhpq;


# direct methods
.method private constructor <init>(Lhpq;)V
    .locals 1

    .prologue
    .line 199
    iput-object p1, p0, Lhpq$b;->b:Lhpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhpq$b;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lhpq;B)V
    .locals 0
    .param p1, "x0"    # Lhpq;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lhpq$b;-><init>(Lhpq;)V

    return-void
.end method


# virtual methods
.method public final removeNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V
    .locals 1
    .param p1, "netEventListener"    # Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .prologue
    .line 210
    iget-object v0, p0, Lhpq$b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public final setNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V
    .locals 1
    .param p1, "netEventListener"    # Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .prologue
    .line 205
    iget-object v0, p0, Lhpq$b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method
