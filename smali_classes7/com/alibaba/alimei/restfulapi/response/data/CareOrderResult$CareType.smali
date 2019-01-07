.class public Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareType;
.super Ljava/lang/Object;
.source "CareOrderResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CareType"
.end annotation


# static fields
.field public static final TYPE_FOLDER:Ljava/lang/String; = "folder"

.field public static final TYPE_TAG:Ljava/lang/String; = "tag"

.field public static final TYPE_UNREAD:Ljava/lang/String; = "unread"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
