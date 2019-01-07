.class public Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
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
    name = "VideoMessageObject"
.end annotation


# instance fields
.field public authCode:Ljava/lang/String;

.field public authEntity:Ljava/lang/String;

.field public authType:Ljava/lang/String;

.field public bitrate:I

.field public duration:J

.field public height:I

.field public picAuthCode:Ljava/lang/String;

.field public size:J

.field public thumbAuthUrl:Ljava/lang/String;

.field public thumbUrl:Ljava/lang/String;

.field public videoAuthUrl:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
