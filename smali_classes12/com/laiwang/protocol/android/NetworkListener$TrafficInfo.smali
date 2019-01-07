.class public Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;
.super Ljava/lang/Object;
.source "NetworkListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/NetworkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficInfo"
.end annotation


# instance fields
.field public bizName:Ljava/lang/String;

.field public requestDataLength:J

.field public responseDataLength:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
