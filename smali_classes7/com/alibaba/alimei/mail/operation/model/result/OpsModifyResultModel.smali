.class public Lcom/alibaba/alimei/mail/operation/model/result/OpsModifyResultModel;
.super Ljava/lang/Object;
.source "OpsModifyResultModel.java"


# static fields
.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/alimei/mail/operation/model/result/OpsModifyResultModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/alimei/mail/operation/model/result/OpsModifyResultModel;->result:Ljava/lang/String;

    .line 29
    return-void
.end method
