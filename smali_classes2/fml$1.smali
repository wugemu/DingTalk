.class final Lfml$1;
.super Lcmg;
.source "CrmApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfml;->a(JLjava/lang/String;Lcom/alibaba/android/user/crm/service/CrmCustomerListType;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfmh;",
        "Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfml;


# direct methods
.method constructor <init>(Lfml;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfml;

    .prologue
    .line 54
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;>;"
    iput-object p1, p0, Lfml$1;->a:Lfml;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lfmh;

    .line 1057
    invoke-static {p1}, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->fromIdlModel(Lfmh;)Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;

    move-result-object v0

    .line 54
    return-object v0
.end method
