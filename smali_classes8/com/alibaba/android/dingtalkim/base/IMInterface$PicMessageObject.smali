.class public Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;
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
    name = "PicMessageObject"
.end annotation


# instance fields
.field public authMediaId:Ljava/lang/String;

.field public fileSize:J

.field public filename:Ljava/lang/String;

.field public orientation:I

.field public sendOrigin:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
