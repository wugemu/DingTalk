.class final Lfak$35;
.super Lcmg;
.source "ContactAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(JLfoz;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcen;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfak;


# direct methods
.method constructor <init>(Lfak;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 1308
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iput-object p1, p0, Lfak$35;->a:Lfak;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1308
    check-cast p1, Lcen;

    .line 2312
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->fromIDLModel(Lcen;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    move-result-object v0

    .line 1308
    return-object v0
.end method
