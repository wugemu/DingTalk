.class public Lcom/alipay/android/app/cctemplate/rpc/model/TemplateRes;
.super Lcom/alipay/mobiletms/common/service/facade/model/MobiletmsResult;
.source "TemplateRes.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public templateJsonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobiletms/common/service/facade/model/MobiletmsResult;-><init>()V

    return-void
.end method
