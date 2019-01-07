.class public Lcom/taobao/securityjni/DynamicDataStore;
.super Ljava/lang/Object;
.source "DynamicDataStore.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    .line 17
    .local v0, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getByteArrayDDp(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 78
    const/high16 v0, -0x40800000    # -1.0f

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, -0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 84
    const-wide/16 v0, -0x1

    .line 85
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLongCompat(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringCompat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringDDp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, -0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putBoolean(Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0
.end method

.method public putByteArray(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 55
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, -0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putByteArray(Ljava/lang/String;[B)I

    move-result v0

    goto :goto_0
.end method

.method public putByteArrayDDp(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public putFloat(Ljava/lang/String;F)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 37
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, -0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putFloat(Ljava/lang/String;F)I

    move-result v0

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, -0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 49
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, -0x1

    .line 51
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putLong(Ljava/lang/String;J)I

    move-result v0

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, -0x1

    .line 27
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public putStringDDp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public removeBoolean(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeBoolean(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public removeByteArray(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeByteArray(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public removeByteArrayDDp(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 162
    return-void
.end method

.method public removeFloat(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeFloat(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public removeInt(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeInt(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public removeLong(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeLong(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public removeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeString(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public removeStringDDp(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 157
    return-void
.end method
