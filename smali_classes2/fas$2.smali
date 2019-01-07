.class final Lfas$2;
.super Lcmg;
.source "LoginApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfas;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcdm;",
        "Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfas;


# direct methods
.method constructor <init>(Lfas;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfas;

    .prologue
    .line 286
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;>;"
    iput-object p1, p0, Lfas$2;->a:Lfas;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    check-cast p1, Lcdm;

    .line 1290
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;->fromIdl(Lcdm;)Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    move-result-object v0

    .line 286
    return-object v0
.end method
