.class public final Lfas$3;
.super Lcmg;
.source "LoginApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcdl;",
        "Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfas;


# direct methods
.method public constructor <init>(Lfas;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfas;

    .prologue
    .line 302
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;>;"
    iput-object p1, p0, Lfas$3;->a:Lfas;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    check-cast p1, Lcdl;

    .line 1306
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;->fromIdl(Lcdl;)Lcom/alibaba/android/dingtalk/userbase/model/FaceIdInitObject;

    move-result-object v0

    .line 302
    return-object v0
.end method
