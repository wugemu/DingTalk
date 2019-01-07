.class public final Lfug$5;
.super Lcmg;
.source "NameCardApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lchd;",
        "Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfug;


# direct methods
.method public constructor <init>(Lfug;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfug;

    .prologue
    .line 233
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;>;"
    iput-object p1, p0, Lfug$5;->a:Lfug;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    check-cast p1, Lchd;

    .line 1236
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->fromIdl(Lchd;)Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    move-result-object v0

    .line 233
    return-object v0
.end method
