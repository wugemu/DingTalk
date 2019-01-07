.class public Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;
.super Ljava/lang/Object;
.source "ManagerOrgContract.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressData"
.end annotation


# instance fields
.field public checked:Z

.field public orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;)V
    .locals 0
    .param p1, "orgEcAddressObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;->orgEcAddressObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    .line 32
    return-void
.end method
