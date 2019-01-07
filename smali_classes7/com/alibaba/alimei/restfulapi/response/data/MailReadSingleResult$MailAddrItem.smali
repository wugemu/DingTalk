.class public Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;
.super Ljava/lang/Object;
.source "MailReadSingleResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MailAddrItem"
.end annotation


# instance fields
.field public date:J

.field public email:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
