.class public Lcom/laiwang/protocol/android/NetworkListener$NetworkState;
.super Ljava/lang/Object;
.source "NetworkListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/NetworkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkState"
.end annotation


# instance fields
.field public lwpConnectState:I

.field public networkState:Lcom/laiwang/protocol/network/Network$State;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
