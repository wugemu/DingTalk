.class public abstract Lcom/alibaba/alimei/restfulapi/data/Constants$EventClass;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventClass"
.end annotation


# static fields
.field public static final CONFIDENTIA:Ljava/lang/String; = "CONFIDENTIA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVATE:Ljava/lang/String; = "PRIVATE"

.field public static final PUBLIC:Ljava/lang/String; = "PUBLIC"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
