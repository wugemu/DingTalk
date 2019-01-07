.class public interface abstract Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;
.super Ljava/lang/Object;
.source "DDMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMediaObject"
.end annotation


# static fields
.field public static final TYPE_IMAGE:I = 0x3

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_WEBPAGE:I = 0x1

.field public static final TYPE_ZHIFUBAO:I


# virtual methods
.method public abstract checkArgs()Z
.end method

.method public abstract getSupportVersion()I
.end method

.method public abstract serialize(Landroid/os/Bundle;)V
.end method

.method public abstract type()I
.end method

.method public abstract unserialize(Landroid/os/Bundle;)V
.end method
