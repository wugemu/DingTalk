.class public Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;
.super Ljava/lang/Object;
.source "IMInterface.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/base/IMInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoMessageObject"
.end annotation


# instance fields
.field public latitude:D

.field public locationName:Ljava/lang/String;

.field public longitude:D

.field public thumbUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
