.class public interface abstract Lcom/alibaba/wukong/im/MessageContent$GeoContent;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$MediaContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GeoContent"
.end annotation


# virtual methods
.method public abstract getPicHeight()I
.end method

.method public abstract getPicWidth()I
.end method

.method public abstract latitude()D
.end method

.method public abstract locationName()Ljava/lang/String;
.end method

.method public abstract longitude()D
.end method
