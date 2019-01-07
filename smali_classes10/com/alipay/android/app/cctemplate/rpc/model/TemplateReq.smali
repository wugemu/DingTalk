.class public Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReq;
.super Liql;
.source "TemplateReq.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public templateReqModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/cctemplate/rpc/model/TemplateReqModel;",
            ">;"
        }
    .end annotation
.end field

.field public tplVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Liql;-><init>()V

    return-void
.end method
