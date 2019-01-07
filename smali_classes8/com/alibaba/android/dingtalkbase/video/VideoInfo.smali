.class public Lcom/alibaba/android/dingtalkbase/video/VideoInfo;
.super Ljava/lang/Object;
.source "VideoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5b40aad57b61cec6L


# instance fields
.field public duration:J

.field public fileName:Ljava/lang/String;

.field public height:I

.field public picUrl:Ljava/lang/String;

.field public size:J

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->duration:J

    .line 13
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->width:I

    .line 14
    iput p4, p0, Lcom/alibaba/android/dingtalkbase/video/VideoInfo;->height:I

    .line 15
    return-void
.end method
