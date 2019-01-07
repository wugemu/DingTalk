.class final Lfml$2;
.super Lcmg;
.source "CrmApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfml;->a(JLjava/lang/String;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfmf;",
        "Lcom/alibaba/android/user/crm/model/CrmContactObjectList;",
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
    .line 66
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/user/crm/model/CrmContactObjectList;>;"
    iput-object p1, p0, Lfml$2;->a:Lfml;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    check-cast p1, Lfmf;

    .line 1069
    new-instance v0, Lcom/alibaba/android/user/crm/model/CrmContactObjectList;

    invoke-direct {v0}, Lcom/alibaba/android/user/crm/model/CrmContactObjectList;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/crm/model/CrmContactObjectList;->fromIdlModel(Lfmf;)Lcom/alibaba/android/user/crm/model/CrmContactObjectList;

    move-result-object v0

    .line 66
    return-object v0
.end method
