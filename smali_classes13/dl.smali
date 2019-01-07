.class final Ldl;
.super Ljava/lang/Object;
.source "RemoteInputCompatJellybean.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([Ldk$a;)[Landroid/os/Bundle;
    .locals 6
    .param p0, "remoteInputs"    # [Ldk$a;

    .prologue
    .line 94
    if-nez p0, :cond_1

    .line 95
    const/4 v0, 0x0

    .line 101
    :cond_0
    return-object v0

    .line 97
    :cond_1
    array-length v2, p0

    new-array v0, v2, [Landroid/os/Bundle;

    .line 98
    .local v0, "bundles":[Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 99
    aget-object v2, p0, v1

    .line 1063
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1064
    const-string/jumbo v4, "resultKey"

    invoke-virtual {v2}, Ldk$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string/jumbo v4, "label"

    invoke-virtual {v2}, Ldk$a;->b()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1066
    const-string/jumbo v4, "choices"

    invoke-virtual {v2}, Ldk$a;->c()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 1067
    const-string/jumbo v4, "allowFreeFormInput"

    invoke-virtual {v2}, Ldk$a;->e()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1068
    const-string/jumbo v4, "extras"

    invoke-virtual {v2}, Ldk$a;->f()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1070
    invoke-virtual {v2}, Ldk$a;->d()Ljava/util/Set;

    move-result-object v2

    .line 1071
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1072
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1073
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1074
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1076
    :cond_2
    const-string/jumbo v2, "allowedDataTypes"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 99
    :cond_3
    aput-object v3, v0, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a([Landroid/os/Bundle;Ldk$a$a;)[Ldk$a;
    .locals 9
    .param p0, "bundles"    # [Landroid/os/Bundle;
    .param p1, "factory"    # Ldk$a$a;

    .prologue
    .line 83
    if-nez p0, :cond_1

    .line 84
    const/4 v8, 0x0

    .line 90
    :cond_0
    return-object v8

    .line 86
    :cond_1
    array-length v0, p0

    invoke-interface {p1, v0}, Ldk$a$a;->a(I)[Ldk$a;

    move-result-object v8

    .line 87
    .local v8, "remoteInputs":[Ldk$a;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p0

    if-ge v7, v0, :cond_0

    .line 88
    aget-object v5, p0, v7

    .line 1047
    const-string/jumbo v0, "allowedDataTypes"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1048
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1049
    if-eqz v0, :cond_2

    .line 1050
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1051
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1054
    :cond_2
    const-string/jumbo v0, "resultKey"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "label"

    .line 1055
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v0, "choices"

    .line 1056
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    const-string/jumbo v0, "allowFreeFormInput"

    .line 1057
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v0, "extras"

    .line 1058
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    .line 1054
    invoke-interface/range {v0 .. v6}, Ldk$a$a;->a(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)Ldk$a;

    move-result-object v0

    .line 88
    aput-object v0, v8, v7

    .line 87
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
