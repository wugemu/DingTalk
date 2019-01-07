.class public final Ldfn$2;
.super Lcmg;
.source "ServiceGroupAnswerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ldfp;",
        "Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldfn;


# direct methods
.method public constructor <init>(Ldfn;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldfn;

    .prologue
    .line 32
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;>;"
    iput-object p1, p0, Ldfn$2;->a:Ldfn;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Ldfp;

    .line 1034
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;->fromIdl(Ldfp;)Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;

    move-result-object v0

    .line 32
    return-object v0
.end method
