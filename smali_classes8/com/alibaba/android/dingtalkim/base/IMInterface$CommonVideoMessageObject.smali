.class public Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;
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
    name = "CommonVideoMessageObject"
.end annotation


# instance fields
.field public authMediaId:Ljava/lang/String;

.field public duration:J

.field public height:I

.field public picAuthMediaId:Ljava/lang/String;

.field public size:J

.field public thumbUrl:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
